.class public Lcom/oculus/appmanager/info/InfoUtils$UpdateInfoCollection;
.super Ljava/lang/Object;
.source "InfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/InfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateInfoCollection"
.end annotation


# instance fields
.field public final apk:Lcom/oculus/appmanager/info/ApkUpdateInfo;

.field public final assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final obb:Lcom/oculus/appmanager/info/ApkUpdateInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
            "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/oculus/appmanager/info/InfoUtils$UpdateInfoCollection;->apk:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    .line 59
    iput-object p2, p0, Lcom/oculus/appmanager/info/InfoUtils$UpdateInfoCollection;->obb:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    .line 60
    iput-object p3, p0, Lcom/oculus/appmanager/info/InfoUtils$UpdateInfoCollection;->assets:Ljava/util/List;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/util/List;Lcom/oculus/appmanager/info/InfoUtils$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/appmanager/info/InfoUtils$UpdateInfoCollection;-><init>(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/util/List;)V

    return-void
.end method
