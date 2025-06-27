var filteredGroups = info[0].groups
    .Where(x => !string.IsNullOrEmpty(x?.Name) && x.Name.Contains("MIM_ABT-GWG_"))
    .ToList();