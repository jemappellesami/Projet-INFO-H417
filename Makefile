all:
	python3 rangetype.py
	python3 joincardinalityestimation.py

testing:
	python3 generate_random_ranges.py
	python3 rangetype.py
	python3 joincardinalityestimation.py