.class public Lcom/oculus/horizon/api/common/MinimumAppVersion;
.super Ljava/lang/Object;
.source "MinimumAppVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;
    }
.end annotation


# instance fields
.field public required_versions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
