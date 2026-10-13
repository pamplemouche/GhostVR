.class public LB80;
.super LkW;
.source "PG"


# instance fields
.field public final a:J

.field public final b:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(JLorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-wide p1, p0, LB80;->a:J

    .line 3
    iput-object p3, p0, LB80;->b:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, LB80;->a:J

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(J)LA80;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, LA80;

    .line 2
    iget-object v0, p0, LB80;->b:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
