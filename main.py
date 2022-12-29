from clarifai_grpc.channel.clarifai_channel import ClarifaiChannel
from clarifai_grpc.grpc.api import resources_pb2, service_pb2, service_pb2_grpc
from clarifai_grpc.grpc.api.status import status_code_pb2
import googletrans
from googletrans import Translator
import kivy
from kivy.app import App
from kivy.uix.label import Label


def getImage(URL) -> str:
    # Twitter api
    return URL

def getDescrption(URL) -> str:
    channel = ClarifaiChannel.get_grpc_channel()
    stub = service_pb2_grpc.V2Stub(channel)

    metadata = (('authorization', 'Key ' + "6b36710a30a0451c8736fd4f345047e7"),)

    userDataObject = resources_pb2.UserAppIDSet(user_id="hx6lt53y6p37",
                                                app_id="Ain")  # The userDataObject is required when using a PAT

    post_workflow_results_response = stub.PostWorkflowResults(
        service_pb2.PostWorkflowResultsRequest(
            user_app_id=userDataObject,
            workflow_id="workflow-4cc06a",
            inputs=[
                resources_pb2.Input(
                    data=resources_pb2.Data(
                        image=resources_pb2.Image(
                            url=URL
                        )
                    )
                )
            ]
        ),
        metadata=metadata
    )
    if post_workflow_results_response.status.code != status_code_pb2.SUCCESS:
        print(post_workflow_results_response.status)
        raise Exception("Post workflow results failed, status: " + post_workflow_results_response.status.description)

    # We'll get one WorkflowResult for each input we used above. Because of one input, we have here one WorkflowResult
    results = post_workflow_results_response.results[0]
    # Each model we have in the workflow will produce one output.
    for output in results.outputs:
        model = output.model
        for concept in output.data.concepts:
            print("	%s %.2f" % (concept.name, concept.value))

    # Uncomment this line to print the full Response JSON
    return results.outputs[0].data.text.raw

def TranslateToAr(text):
    translator = Translator()
    return translator.translate(text, dest="ar").text

'''
url = getImage("https://samples.clarifai.com/metro-north.jpg")
desc = getDescrption(url)
print(TranslateToAr(desc))
'''

kivy.require('1.9.0')

class Ain(App):

    def build(self):
        return Label(text="Ain")

ain = Ain()
ain.run()