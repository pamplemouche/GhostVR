.class public Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse$Viewer;
.super Ljava/lang/Object;
.source "CheckTermsOfServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Viewer"
.end annotation


# instance fields
.field public challenge_tos:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
