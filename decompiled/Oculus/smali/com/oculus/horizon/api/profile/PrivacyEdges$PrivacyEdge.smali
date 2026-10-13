.class public Lcom/oculus/horizon/api/profile/PrivacyEdges$PrivacyEdge;
.super Ljava/lang/Object;
.source "PrivacyEdges.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/profile/PrivacyEdges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyEdge"
.end annotation


# instance fields
.field public is_currently_selected:Z

.field public is_default_option:Z

.field public node:Lcom/oculus/horizon/api/profile/PrivacyAudience;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
