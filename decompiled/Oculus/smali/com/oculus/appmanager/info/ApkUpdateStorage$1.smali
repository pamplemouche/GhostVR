.class Lcom/oculus/appmanager/info/ApkUpdateStorage$1;
.super Ljava/lang/Object;
.source "ApkUpdateStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/info/ApkUpdateStorage;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/info/ApkUpdateStorage;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/info/ApkUpdateStorage;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oculus/appmanager/info/ApkUpdateStorage$1;->this$0:Lcom/oculus/appmanager/info/ApkUpdateStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateStorage$1;->this$0:Lcom/oculus/appmanager/info/ApkUpdateStorage;

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateStorage;->loadUpdates()Ljava/util/Map;

    .line 115
    return-void
.end method
