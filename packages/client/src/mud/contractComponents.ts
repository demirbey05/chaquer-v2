/* Autogenerated file. Do not edit manually. */

import { TableId } from "@latticexyz/common";
import { defineComponent, Type as RecsType, World } from "@latticexyz/recs";

export function defineContractComponents(world: World) {
  return {
    ArmyConfig: (() => {
      const tableId = new TableId("", "ArmyConfig");
      return defineComponent(
        world,
        {
          numSwordsman: RecsType.Number,
          numArcher: RecsType.Number,
          numCavalry: RecsType.Number,
          gameID: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    ArmyOwnable: (() => {
      const tableId = new TableId("", "ArmyOwnable");
      return defineComponent(
        world,
        {
          owner: RecsType.String,
          gameID: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    CastleOwnable: (() => {
      const tableId = new TableId("", "CastleOwnable");
      return defineComponent(
        world,
        {
          owner: RecsType.String,
          gameID: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    MapConfig: (() => {
      const tableId = new TableId("", "MapConfig");
      return defineComponent(
        world,
        {
          width: RecsType.Number,
          height: RecsType.Number,
          terrain: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Position: (() => {
      const tableId = new TableId("", "Position");
      return defineComponent(
        world,
        {
          x: RecsType.Number,
          y: RecsType.Number,
          gameID: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    CastleSiegeResult: (() => {
      const tableId = new TableId("", "CastleSiegeResul");
      return defineComponent(
        world,
        {
          winner: RecsType.String,
          loser: RecsType.String,
          isDraw: RecsType.Boolean,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    BattleResult: (() => {
      const tableId = new TableId("", "BattleResult");
      return defineComponent(
        world,
        {
          winner: RecsType.String,
          loser: RecsType.String,
          isDraw: RecsType.Boolean,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Players: (() => {
      const tableId = new TableId("", "Players");
      return defineComponent(
        world,
        {
          userValid: RecsType.Boolean,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    PlayerSeeds: (() => {
      const tableId = new TableId("", "PlayerSeeds");
      return defineComponent(
        world,
        {
          seeds: RecsType.BigIntArray,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    NumberOfUsers: (() => {
      const tableId = new TableId("", "NumberOfUsers");
      return defineComponent(
        world,
        {
          numOfUsers: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    LimitOfGame: (() => {
      const tableId = new TableId("", "LimitOfGame");
      return defineComponent(
        world,
        {
          numOfUsers: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    AddressToUsername: (() => {
      const tableId = new TableId("", "AddressToUsernam");
      return defineComponent(
        world,
        {
          userName: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHex(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
  };
}
