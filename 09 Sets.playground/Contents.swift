var challenge:Set = [
    "get the flag",
    "fold the flag",
    "takes stones",
    "fold the flag",         //repeating a value, sets do not allow value repeatetion
    "get to the home",
]
// all the values stored in the sets needs to be hashable
print(challenge)

challenge.contains("get the flag")
challenge.sorted()


var challengeV2:Set = [
    "get the flag",
    "get the guns",
    "fire the guns",
    "get to the home",
]

var intersectionChallenges = challenge.intersection(challengeV2)

challenge.symmetricDifference(challengeV2)

var unionchallenge = challenge.union(challengeV2)

challenge.subtract(challengeV2)
