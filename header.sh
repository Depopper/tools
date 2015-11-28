for var in "$@"
do
	now=$(date "+%Y/%m/%d %H:%M:%S");
	size=${#var};
	size=$((50-size));
	s=$(printf "%-${size}s" " ");

	echo "/* ************************************************************************** */" >> temp;
	echo "/*                                                                            */" >> temp;
	echo "/*                                                        :::      ::::::::   */" >> temp;
	echo "/*   $var ${s// / }:+:      :+:    :+:   */" >> temp;
	echo "/*                                                    +:+ +:+         +:+     */" >> temp;
	echo "/*   By: aschafer <depopper0526@gmail.com>          +#+  +:+       +#+        */" >> temp;
	echo "/*                                                +#+#+#+#+#+   +#+           */" >> temp;
	echo "/*   Created: $now by aschafer          #+#    #+#             */" >> temp;
	echo "/*   Updated: $now by aschafer         ###   ########.fr       */" >> temp;
	echo "/*                                                                            */" >> temp;
	echo "/* ************************************************************************** */\n" >> temp;

	cat $var >> temp;

	cat temp > $var;
	rm temp;
done
