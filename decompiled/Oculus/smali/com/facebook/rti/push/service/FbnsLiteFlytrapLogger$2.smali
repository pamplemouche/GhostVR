.class Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger$2;
.super Ljava/lang/Object;
.source "FbnsLiteFlytrapLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->logInternal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger$2;->this$0:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger$2;->this$0:Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;->access$000(Lcom/facebook/rti/push/service/FbnsLiteFlytrapLogger;Z)V

    .line 158
    return-void
.end method
