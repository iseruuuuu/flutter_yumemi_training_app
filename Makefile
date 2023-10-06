.PHONY: run
run:
	fvm flutter pub get
	fvm flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: check
check:
	fvm flutter analyze