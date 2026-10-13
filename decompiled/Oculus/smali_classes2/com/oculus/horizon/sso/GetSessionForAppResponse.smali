.class public Lcom/oculus/horizon/sso/GetSessionForAppResponse;
.super Ljava/lang/Object;
.source "GetSessionForAppResponse.java"


# instance fields
.field public error_msg:Ljava/lang/String;

.field public machine_id:Ljava/lang/String;

.field public session_cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/sso/SessionCookie;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
