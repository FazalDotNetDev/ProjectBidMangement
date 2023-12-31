﻿using Contracts;
using Entities;
using Entities.Models;
using PanacealogicsSales.Entities.Models;

namespace Repository
{
    public class ProjectRepository : RepositoryBase<Project>, IProjectRepository
    {
        public ProjectRepository(RepositoryContext repositoryContext)
            : base(repositoryContext)
        {
        }
    }
}
