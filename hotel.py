import numpy as np
import vtk

# Funzione per creare un cubo colorato
def create_cube_actor(color):
    cube = vtk.vtkCubeSource()
    cube.SetXLength(1)
    cube.SetYLength(1)
    cube.SetZLength(1)

    cube_mapper = vtk.vtkPolyDataMapper()
    cube_mapper.SetInputConnection(cube.GetOutputPort())

    cube_actor = vtk.vtkActor()
    cube_actor.SetMapper(cube_mapper)
    cube_actor.GetProperty().SetColor(color)

    return cube_actor

num_piani = 5
num_camere_per_piano = 10
num_giorni = 7

disponibilita = np.random.randint(0, 3, size=(num_piani, num_camere_per_piano, num_giorni))

renderer = vtk.vtkRenderer()
render_window = vtk.vtkRenderWindow()
render_window.AddRenderer(renderer)

interactor = vtk.vtkRenderWindowInteractor()
interactor.SetRenderWindow(render_window)

for piano in range(num_piani):
    for camera in range(num_camere_per_piano):
        for giorno in range(num_giorni):
            color = (1, 1, 1)
            if disponibilita[piano, camera, giorno] == 0:
                color = (1, 0, 0)
            elif disponibilita[piano, camera, giorno] == 1:
                color = (1, 1, 0)
            else:
                color = (0, 1, 0)
            cube_actor = create_cube_actor(color)
            cube_actor.SetPosition(piano * 1.5, camera * 1.5, giorno * 1.5)
            renderer.AddActor(cube_actor)

camera = vtk.vtkCamera()
camera.SetPosition(num_piani / 2, num_camere_per_piano / 2, num_giorni * 2)
camera.SetFocalPoint(num_piani / 2, num_camere_per_piano / 2, 0)
renderer.SetActiveCamera(camera)

light1 = vtk.vtkLight()
light1.SetPosition(5, 5, 5)
renderer.AddLight(light1)

light2 = vtk.vtkLight()
light2.SetPosition(-5, -5, -5)
renderer.AddLight(light2)

render_window.Render()

interactor.Initialize()
interactor.Start()