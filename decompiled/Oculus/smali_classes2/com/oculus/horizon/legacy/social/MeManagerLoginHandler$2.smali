.class Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$2;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "MeManagerLoginHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;->prefetchProfilePhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;J)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$2;->this$0:Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

    iput-wide p2, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$2;->val$start:J

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$2;->val$start:J

    sub-long/2addr v0, v2

    .line 85
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$2;->this$0:Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

    .line 86
    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;->access$000(Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Failure fetching profile photo [%dms]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getFailureCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 85
    invoke-static {v2, v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$2;->val$start:J

    sub-long/2addr v0, v2

    .line 79
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$2;->this$0:Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;->access$000(Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fetched profile photo [%dms]"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method
