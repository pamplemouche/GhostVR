.class public Lcom/oculus/horizon/api/profile/PrivacyEdges;
.super Ljava/lang/Object;
.source "PrivacyEdges.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/profile/PrivacyEdges$PrivacyEdge;
    }
.end annotation


# instance fields
.field public edges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/profile/PrivacyEdges$PrivacyEdge;",
            ">;"
        }
    .end annotation
.end field

.field public identity_in_search_state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
