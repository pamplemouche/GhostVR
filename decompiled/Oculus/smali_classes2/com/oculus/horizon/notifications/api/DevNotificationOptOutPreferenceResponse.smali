.class public Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;
.super Ljava/lang/Object;
.source "DevNotificationOptOutPreferenceResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# instance fields
.field public app_group_id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public opt_out_value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
