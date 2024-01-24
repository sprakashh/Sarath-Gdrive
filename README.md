This is a decentralized web3.0 file sharing application that is deployed on the Ethereum Blockchain(Sepolia testnet) and uses IPFS for storage of Image files. Here ,we use Pinata to simplify interaction with IPFS . This application has been hosted on netlify and is accessible via : https://sarath-gdrive.netlify.app 
The technologies used here include :
   a. Ethereum Blockchain Protocol
   b. Solidity
   c. React JS
   d. Node JS
   e. Hardhat
   f. IPFS(using Pinata)

To use the application, please follow the below steps :
   1. Go to https://sarath-gdrive.netlify.app , you will get a Metamask prompt(if it is installed in your browser,else please install it), please enter your credentials and login.
   2. After login, in metamask, select Sepolia as the Network.
   3. Please ensure that you have sufficient ether in your wallet.
   4. On the application screen, click on "Choose file" button , to select any file from your local machine.
   5. After selection, click on the "Upload File" button, to upload file to IPFS.
   6. Wait for the prompt that Image is successfully uploaded on IPFS and click OK.
   7. A Metamask prompt will be observed next to pay required Gas fees.
   8. After paying fees, wait for confirmation from Metamask for transaction success.
   9. On getting confirmation, click on "Get Data" button to display the uploaded Image.

      In addition , to use the Share functionality, click on the Share button on top left and follow below steps :
       1. Enter the address with whom the images have to be shared and click on "Share access".
       2. Observe the dropdown  below the address field, it will get populated with the above entered address.
       3. Now go back to the original screen and select address entered in step 1.
       4. Now in the field above "Get Data" button , enter the address used to Upload Image and click on "Get Data", this will display the uploaded image, this means that address entered in step 1 is able to view the uploaded image of another address as share access was granted.
     
      In addition , to use the revoke access functionality, click on the Share button on top left and follow below steps :
       1. Enter the address to revoke access and click on "Revoke access".
       2. Access to the images for this address will now be revoked and it will be removed from the dropdown.
      
