.class public Lcom/oculus/base/app/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public final appId:Ljava/lang/String;

.field public final appName:Ljava/lang/String;

.field public final appSecret:Ljava/lang/String;

.field public final flytrapCategoryId:Ljava/lang/String;

.field public final oculusAppId:Ljava/lang/String;

.field public final oculusLoginToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/base/app/AppInfo;->appId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/oculus/base/app/AppInfo;->appName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/oculus/base/app/AppInfo;->appSecret:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/oculus/base/app/AppInfo;->flytrapCategoryId:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/oculus/base/app/AppInfo;->oculusAppId:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/oculus/base/app/AppInfo;->oculusLoginToken:Ljava/lang/String;

    .line 29
    return-void
.end method
