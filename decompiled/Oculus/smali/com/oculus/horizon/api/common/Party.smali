.class public Lcom/oculus/horizon/api/common/Party;
.super Ljava/lang/Object;
.source "Party.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Party$PartyUsers;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public party_users:Lcom/oculus/horizon/api/common/Party$PartyUsers;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
