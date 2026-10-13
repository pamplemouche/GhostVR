.class public Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse;
.super Ljava/lang/Object;
.source "DefaultApplicationNuxConfigResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse$DefaultAppConfig;
    }
.end annotation


# instance fields
.field public default_apps_nux_config:Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse$DefaultAppConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
