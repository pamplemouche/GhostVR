.class public Lcom/oculus/horizon/social/api/BlockedUsersResponse;
.super Ljava/lang/Object;
.source "BlockedUsersResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/BlockedUsersResponse$BlockedUsers;
    }
.end annotation


# instance fields
.field public blocked_users:Lcom/oculus/horizon/social/api/BlockedUsersResponse$BlockedUsers;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/social/api/BlockedUsersResponse;->blocked_users:Lcom/oculus/horizon/social/api/BlockedUsersResponse$BlockedUsers;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BlockedUsersResponse had no blocked_users"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/social/api/BlockedUsersResponse;->blocked_users:Lcom/oculus/horizon/social/api/BlockedUsersResponse$BlockedUsers;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/BlockedUsersResponse$BlockedUsers;->nodes:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "blocked_users had no nodes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    return-void
.end method
