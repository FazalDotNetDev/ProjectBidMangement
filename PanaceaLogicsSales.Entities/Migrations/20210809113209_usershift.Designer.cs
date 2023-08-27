﻿// <auto-generated />
using System;
using Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace PanacealogicsSales.Entities.Migrations
{
    [DbContext(typeof(RepositoryContext))]
    [Migration("20210809113209_usershift")]
    partial class usershift
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.0")
                .HasAnnotation("Relational:MaxIdentifierLength", 64);

            modelBuilder.Entity("Entities.Models.Account", b =>
                {
                    b.Property<Guid>("account_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("char(36)");

                    b.Property<string>("account_type")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<DateTime>("created_date")
                        .HasColumnType("datetime(6)");

                    b.Property<string>("password")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<string>("username")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.HasKey("account_id");

                    b.ToTable("account");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.Product", b =>
                {
                    b.Property<int>("product_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("amount")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<DateTime>("date")
                        .HasColumnType("datetime(6)");

                    b.Property<string>("desc")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<string>("name")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.HasKey("product_id");

                    b.ToTable("product");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.Project", b =>
                {
                    b.Property<Guid>("project_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("char(36)");

                    b.Property<string>("budget")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<string>("client_country")
                        .HasColumnType("varchar(100) CHARACTER SET utf8mb4")
                        .HasMaxLength(100);

                    b.Property<int?>("client_reputation")
                        .HasColumnType("int");

                    b.Property<DateTime?>("date")
                        .HasColumnType("datetime(6)");

                    b.Property<string>("desc")
                        .HasColumnType("longtext CHARACTER SET utf8mb4")
                        .HasMaxLength(5000);

                    b.Property<string>("external_project_id")
                        .HasColumnType("varchar(255) CHARACTER SET utf8mb4")
                        .HasMaxLength(255);

                    b.Property<bool>("is_acitve")
                        .HasColumnType("tinyint(1)");

                    b.Property<bool?>("is_deleted")
                        .HasColumnType("tinyint(1)");

                    b.Property<string>("name")
                        .IsRequired()
                        .HasColumnType("varchar(255) CHARACTER SET utf8mb4")
                        .HasMaxLength(255);

                    b.Property<string>("project_time")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<string>("project_type")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<int?>("project_value")
                        .HasColumnType("int");

                    b.Property<string>("skills")
                        .IsRequired()
                        .HasColumnType("varchar(255) CHARACTER SET utf8mb4")
                        .HasMaxLength(255);

                    b.Property<string>("status")
                        .HasColumnType("varchar(50) CHARACTER SET utf8mb4")
                        .HasMaxLength(50);

                    b.Property<int>("user_id")
                        .HasColumnType("int");

                    b.HasKey("project_id");

                    b.HasIndex("user_id");

                    b.ToTable("Project");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.ProjectSkill", b =>
                {
                    b.Property<int>("project_skill_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<Guid>("project_id")
                        .HasColumnType("char(36)");

                    b.Property<int>("skill_id")
                        .HasColumnType("int");

                    b.HasKey("project_skill_id");

                    b.HasIndex("project_id");

                    b.HasIndex("skill_id");

                    b.ToTable("Project_Skill");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.Proposal", b =>
                {
                    b.Property<int>("proposal_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<DateTime?>("date")
                        .HasColumnType("datetime(6)");

                    b.Property<string>("generated_proposal")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<DateTime?>("last_updated")
                        .HasColumnType("datetime(6)");

                    b.Property<string>("main_proposal")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<Guid>("project_id")
                        .HasColumnType("char(36)");

                    b.Property<DateTime?>("proposal_date")
                        .HasColumnType("datetime(6)");

                    b.Property<int>("user_id")
                        .HasColumnType("int");

                    b.HasKey("proposal_id");

                    b.HasIndex("user_id");

                    b.ToTable("proposal");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.Role", b =>
                {
                    b.Property<int>("role_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("name")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.HasKey("role_id");

                    b.ToTable("Role");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.Skill", b =>
                {
                    b.Property<int>("skill_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("name")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.HasKey("skill_id");

                    b.ToTable("Skill");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.SocialUser", b =>
                {
                    b.Property<int>("social_user_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("email")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<string>("image_url")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<string>("name")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<string>("signup_type")
                        .HasColumnType("varchar(100) CHARACTER SET utf8mb4")
                        .HasMaxLength(100);

                    b.Property<string>("social_id")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<int>("user_id")
                        .HasColumnType("int");

                    b.HasKey("social_user_id");

                    b.HasIndex("user_id");

                    b.ToTable("social_user");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.Thread", b =>
                {
                    b.Property<int>("thread_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<DateTime?>("created_date")
                        .HasColumnType("datetime(6)");

                    b.Property<bool>("has_new_messages")
                        .HasColumnType("tinyint(1)");

                    b.Property<DateTime?>("last_updated")
                        .HasColumnType("datetime(6)");

                    b.Property<Guid>("project_id")
                        .HasColumnType("char(36)");

                    b.Property<string>("user_1")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<int>("user_2")
                        .HasColumnType("int");

                    b.HasKey("thread_id");

                    b.ToTable("thread");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.ThreadHistory", b =>
                {
                    b.Property<int>("thread_history_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<DateTime?>("created_date")
                        .HasColumnType("datetime(6)");

                    b.Property<int>("previous_user")
                        .HasColumnType("int");

                    b.Property<int>("thread_id")
                        .HasColumnType("int");

                    b.HasKey("thread_history_id");

                    b.HasIndex("thread_id");

                    b.ToTable("thread_history");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.ThreadMessage", b =>
                {
                    b.Property<int>("thread_message_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<DateTime?>("created_date")
                        .HasColumnType("datetime(6)");

                    b.Property<bool>("is_client_message")
                        .HasColumnType("tinyint(1)");

                    b.Property<bool>("is_processed")
                        .HasColumnType("tinyint(1)");

                    b.Property<bool>("is_read")
                        .HasColumnType("tinyint(1)");

                    b.Property<string>("message")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<Guid>("project_id")
                        .HasColumnType("char(36)");

                    b.Property<int>("thread_id")
                        .HasColumnType("int");

                    b.HasKey("thread_message_id");

                    b.HasIndex("project_id");

                    b.HasIndex("thread_id");

                    b.ToTable("thread_message");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.User", b =>
                {
                    b.Property<int>("user_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<DateTime?>("date")
                        .HasColumnType("datetime(6)");

                    b.Property<string>("desc")
                        .HasColumnType("varchar(500) CHARACTER SET utf8mb4")
                        .HasMaxLength(500);

                    b.Property<bool>("is_active")
                        .HasColumnType("tinyint(1)");

                    b.Property<string>("password")
                        .IsRequired()
                        .HasColumnType("varchar(255) CHARACTER SET utf8mb4")
                        .HasMaxLength(255);

                    b.Property<int>("role_id")
                        .HasColumnType("int");

                    b.Property<string>("social_id")
                        .HasColumnType("longtext CHARACTER SET utf8mb4");

                    b.Property<string>("username")
                        .IsRequired()
                        .HasColumnType("varchar(255) CHARACTER SET utf8mb4")
                        .HasMaxLength(255);

                    b.HasKey("user_id");

                    b.HasIndex("role_id");

                    b.ToTable("User");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.UserProject", b =>
                {
                    b.Property<int>("user_project_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<int?>("assign_user_id")
                        .HasColumnType("int");

                    b.Property<DateTime?>("date")
                        .HasColumnType("datetime(6)");

                    b.Property<bool>("is_default_submission")
                        .HasColumnType("tinyint(1)");

                    b.Property<bool>("is_processed")
                        .HasColumnType("tinyint(1)");

                    b.Property<Guid>("project_id")
                        .HasColumnType("char(36)");

                    b.Property<int>("user_id")
                        .HasColumnType("int");

                    b.HasKey("user_project_id");

                    b.HasIndex("user_id");

                    b.ToTable("User_Project");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.UserShift", b =>
                {
                    b.Property<int>("user_shift_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<DateTime?>("date")
                        .HasColumnType("datetime(6)");

                    b.Property<DateTime?>("last_updated")
                        .HasColumnType("datetime(6)");

                    b.Property<DateTime>("shift_end")
                        .HasColumnType("datetime(6)");

                    b.Property<DateTime>("shift_start")
                        .HasColumnType("datetime(6)");

                    b.Property<int>("user_id")
                        .HasColumnType("int");

                    b.HasKey("user_shift_id");

                    b.HasIndex("user_id");

                    b.ToTable("user_shift");
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.Project", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.User", "userID")
                        .WithMany()
                        .HasForeignKey("user_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.ProjectSkill", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.Project", "ProjectID")
                        .WithMany()
                        .HasForeignKey("project_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("PanacealogicsSales.Entities.Models.Skill", "SkillID")
                        .WithMany()
                        .HasForeignKey("skill_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.Proposal", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.User", "userID")
                        .WithMany()
                        .HasForeignKey("user_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.SocialUser", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.User", "userID")
                        .WithMany()
                        .HasForeignKey("user_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.ThreadHistory", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.Thread", "ThreadID")
                        .WithMany()
                        .HasForeignKey("thread_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.ThreadMessage", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.Project", "ProjectID")
                        .WithMany()
                        .HasForeignKey("project_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("PanacealogicsSales.Entities.Models.Thread", "ThreadID")
                        .WithMany()
                        .HasForeignKey("thread_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.User", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.Role", "roleID")
                        .WithMany()
                        .HasForeignKey("role_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.UserProject", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.User", "userID")
                        .WithMany()
                        .HasForeignKey("user_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("PanacealogicsSales.Entities.Models.UserShift", b =>
                {
                    b.HasOne("PanacealogicsSales.Entities.Models.User", "userID")
                        .WithMany()
                        .HasForeignKey("user_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}