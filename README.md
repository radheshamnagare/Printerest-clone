# Printerest-clone

 Printerest-clone is origanly idea from printerest and try to devoloped things for learning purposed. All the functionality  simmilar to printerest .may be add more features in futures.
 
 
 ## How to run app
 - Either fork or download the app and open in cli 
 - Install all the dependency using `bundle install` 
 - Start the rails server using `rails server` and it will served at `localhost:3000/`
 - Go to `localhost:3000/` at try do things.

## How to pin 
  - Signed Up with some credential
  - After Signed In we will see the material/designs
  - On linked there present if you clicked on that we can download material
  - On top of page we can create new pin

## Features
- Complate authorization login system for the user
- We can create,edit,update,delete pins according to authorization
- We can search pin
- We can Download pin of other user


## Future features
- printerest-clone will suggest according to your pin interest

## Docker image
- Pull docker image

```bash
  docker pull docker pull radhesham/printerst:v1 
  ```
- Run pulled image

```bash
   docker run -p 80:3000 image_id
  ```
  - We can find image id through 
  
  ```bash
    docker images 
    
