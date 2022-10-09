# ruby bubblesort.rb
require 'pry-byebug'

# example array
unsorteds = [4,3,78,2,0,2]

# main method
def bubblesort(unsorteds)

    # continue?
    continue = true

    # as long as continuing
    while continue do

        # current index tab
        tab = 0

        # set continue to false assuming no swap
        continue = false

        # as long as tab hasn't crossed array boundary
        while unsorteds.length - 1 > tab 

            # compare array tab pair and swap when left bigger than right
            if unsorteds[tab] > unsorteds[tab + 1]
                unsorteds[tab], unsorteds[tab + 1] = unsorteds[tab + 1], unsorteds[tab]

                # continue because we just did a swap
                continue = true
            end

            # scroll tab to the right
            tab += 1
        end
    end

    # return bubblesorted array
    unsorteds
end

# run the method
bubblesort(unsorteds)