import { stringifyWrapper } from "./stringifyWrapper";

export const isEnemyArmy = (
  position: any,
  armyPositions: any[],
  myArmyPositions: any[]
) => {
  if (armyPositions && myArmyPositions) {
    const filteredArray = armyPositions.filter(
      (element) =>
        !myArmyPositions.some(
          (data: any) =>
            stringifyWrapper(data.position)=== stringifyWrapper(element.position)
        )
    );
    if (filteredArray) {
      return filteredArray.some((data: any) => {
        return (
          data.position.x.toString() === position.x.toString() &&
          data.position.y.toString() === position.y.toString()
        );
      });
    }
  }
  return false;
};
