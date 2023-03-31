pragma solidity ^0.8.0;
import "../src/ExampleToken.sol";
import {IERC721Mock} from "properties/ERC721/external/util/IERC721Mock.sol";
import {CryticERC721ExternalBasicProperties} from "properties/ERC721/external/properties/ERC721xternalBasicProperties.sol";

contract CryticERC721ExternalHarness is CryticERC721ExternalBasicProperties {
        
    constructor() {
        // Deploy ERC721
        token = IERC721Mock(address(new ERC721Mock()));
    }

}

contract ERC721Mock is ExampleToken {

    // Address originating transactions in Echidna (must be equal to the `sender` configuration parameter)
    address constant USER1 = address(0x10000);
    address constant USER2 = address(0x20000);
    address constant USER3 = address(0x30000);

    bool public isMintableOrBurnable;
    constructor () {
        isMintableOrBurnable = true;
    }

}
