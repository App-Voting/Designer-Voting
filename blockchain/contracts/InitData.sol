// SPDX-License-Identifier: GPL-3.0
pragma experimental ABIEncoderV2;
pragma solidity >=0.4.25 <0.9.0;

abstract contract InitData {

    struct Image {
        string name;
        string avatar;
        string url_1;
        string url_2;
        string url_3;
        string description;
        uint256 amountVote;
    }

    mapping(uint256 => address) public artistId;
    mapping(uint256 => Image) public imageId;

    string public baseURI;

    /**
     * Dummy data for event
     * In the future, we can accept the same from construction,
     * which will be called at the time of deployment
     */
    function _initializeData() internal {

        imageId[1] = Image({
            name: "Political polling app UI redesign | Lazarev.",
            avatar: getImage("/asset/0x1.jpg"),
            url_1: getImage("/asset/0x11.jpg"),
            url_2: getImage("/asset/0x12.jpg"),
            url_3: getImage("/asset/0x13.jpg"),
            description: "",
            amountVote: 0
        });
        artistId[1] = 0x7e43f90bED8fD75BfF186Ae199c77F8dF55fD898;

        imageId[2] = Image({
            name: "PingPoll - Polling App",
            avatar: getImage("/asset/0x2.jpg"),
            url_1: getImage("/asset/0x21.jpg"),
            url_2: getImage("/asset/0x22.jpg"),
            url_3: getImage("/asset/0x23.jpg"),
            description: "",
            amountVote: 0
        });
        artistId[2] = 0x895d54c0C99de41b31bc9B1e0b4a92Bc3190d256;

        imageId[3] = Image({
            name: "Polling Mobile App",
            avatar: getImage("/asset/0x3.jpg"),
            url_1: getImage("/asset/0x31.jpg"),
            url_2: getImage("/asset/0x32.jpg"),
            url_3: getImage("/asset/0x33.jpg"),
            description: "",
            amountVote: 0
        });
        artistId[3] = 0xA84937C6F5f6ad83d885E977262d8d7A237D012A;

        imageId[4] = Image({
            name: "Honestpoll - Polling Mobile App Mockup",
            avatar: getImage("/asset/0x4.jpg"),
            url_1: getImage("/asset/0x41.jpg"),
            url_2: getImage("/asset/0x42.jpg"),
            url_3: getImage("/asset/0x43.jpg"),
            description: "",
            amountVote: 0
        });
        artistId[4] = 0xb28B3C557a3D0CE38CA0dDfe988ab355473C4130;

        imageId[5] = Image({
            name: "Honestpoll - Polling Mobile App",
            avatar: getImage("/asset/0x5.jpg"),
            url_1: getImage("/asset/0x51.jpg"),
            url_2: getImage("/asset/0x52.jpg"),
            url_3: getImage("/asset/0x53.jpg"),
            description: "",
            amountVote: 0
        });
        artistId[5] = 0x9C5232D1db9EAa4B87c8b8D1846A9bBC2A7AF91E;

        imageId[6] = Image({
            name: "Ask and Answers App - IOS widget version",
            avatar: getImage("/asset/0x6.jpg"),
            url_1: getImage("/asset/0x61.jpg"),
            url_2: getImage("/asset/0x61.jpg"),
            url_3: getImage("/asset/0x63.jpg"),
            description: "",
            amountVote: 0
        });
        artistId[6] = 0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5;
    }

    function getImage(string memory name) internal view returns (string memory){
        return  bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, name)) : "";
    }
}