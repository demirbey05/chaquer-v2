// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("ArmyConfig")));
bytes32 constant ArmyConfigTableId = _tableId;

struct ArmyConfigData {
  uint32 numSwordsman;
  uint32 numArcher;
  uint32 numCavalry;
  uint256 gameID;
}

library ArmyConfig {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](4);
    _schema[0] = SchemaType.UINT32;
    _schema[1] = SchemaType.UINT32;
    _schema[2] = SchemaType.UINT32;
    _schema[3] = SchemaType.UINT256;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](4);
    _fieldNames[0] = "numSwordsman";
    _fieldNames[1] = "numArcher";
    _fieldNames[2] = "numCavalry";
    _fieldNames[3] = "gameID";
    return ("ArmyConfig", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get numSwordsman */
  function getNumSwordsman(bytes32 key) internal view returns (uint32 numSwordsman) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get numSwordsman (using the specified store) */
  function getNumSwordsman(IStore _store, bytes32 key) internal view returns (uint32 numSwordsman) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set numSwordsman */
  function setNumSwordsman(bytes32 key, uint32 numSwordsman) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((numSwordsman)));
  }

  /** Set numSwordsman (using the specified store) */
  function setNumSwordsman(IStore _store, bytes32 key, uint32 numSwordsman) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((numSwordsman)));
  }

  /** Get numArcher */
  function getNumArcher(bytes32 key) internal view returns (uint32 numArcher) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get numArcher (using the specified store) */
  function getNumArcher(IStore _store, bytes32 key) internal view returns (uint32 numArcher) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set numArcher */
  function setNumArcher(bytes32 key, uint32 numArcher) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((numArcher)));
  }

  /** Set numArcher (using the specified store) */
  function setNumArcher(IStore _store, bytes32 key, uint32 numArcher) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((numArcher)));
  }

  /** Get numCavalry */
  function getNumCavalry(bytes32 key) internal view returns (uint32 numCavalry) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get numCavalry (using the specified store) */
  function getNumCavalry(IStore _store, bytes32 key) internal view returns (uint32 numCavalry) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set numCavalry */
  function setNumCavalry(bytes32 key, uint32 numCavalry) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 2, abi.encodePacked((numCavalry)));
  }

  /** Set numCavalry (using the specified store) */
  function setNumCavalry(IStore _store, bytes32 key, uint32 numCavalry) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 2, abi.encodePacked((numCavalry)));
  }

  /** Get gameID */
  function getGameID(bytes32 key) internal view returns (uint256 gameID) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 3);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get gameID (using the specified store) */
  function getGameID(IStore _store, bytes32 key) internal view returns (uint256 gameID) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 3);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set gameID */
  function setGameID(bytes32 key, uint256 gameID) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 3, abi.encodePacked((gameID)));
  }

  /** Set gameID (using the specified store) */
  function setGameID(IStore _store, bytes32 key, uint256 gameID) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 3, abi.encodePacked((gameID)));
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (ArmyConfigData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 key) internal view returns (ArmyConfigData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(bytes32 key, uint32 numSwordsman, uint32 numArcher, uint32 numCavalry, uint256 gameID) internal {
    bytes memory _data = encode(numSwordsman, numArcher, numCavalry, gameID);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(
    IStore _store,
    bytes32 key,
    uint32 numSwordsman,
    uint32 numArcher,
    uint32 numCavalry,
    uint256 gameID
  ) internal {
    bytes memory _data = encode(numSwordsman, numArcher, numCavalry, gameID);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 key, ArmyConfigData memory _table) internal {
    set(key, _table.numSwordsman, _table.numArcher, _table.numCavalry, _table.gameID);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 key, ArmyConfigData memory _table) internal {
    set(_store, key, _table.numSwordsman, _table.numArcher, _table.numCavalry, _table.gameID);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal pure returns (ArmyConfigData memory _table) {
    _table.numSwordsman = (uint32(Bytes.slice4(_blob, 0)));

    _table.numArcher = (uint32(Bytes.slice4(_blob, 4)));

    _table.numCavalry = (uint32(Bytes.slice4(_blob, 8)));

    _table.gameID = (uint256(Bytes.slice32(_blob, 12)));
  }

  /** Tightly pack full data using this table's schema */
  function encode(
    uint32 numSwordsman,
    uint32 numArcher,
    uint32 numCavalry,
    uint256 gameID
  ) internal view returns (bytes memory) {
    return abi.encodePacked(numSwordsman, numArcher, numCavalry, gameID);
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 key) internal pure returns (bytes32[] memory _keyTuple) {
    _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.deleteRecord(_tableId, _keyTuple);
  }
}
