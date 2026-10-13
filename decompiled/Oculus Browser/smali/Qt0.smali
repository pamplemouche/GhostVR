.class public final synthetic LQt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LUt0;

.field public final x:Lorg/chromium/base/Callback;

.field public final y:Lju0;


# direct methods
.method public constructor <init>(LUt0;Lorg/chromium/base/Callback;Lju0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQt0;->w:LUt0;

    iput-object p2, p0, LQt0;->x:Lorg/chromium/base/Callback;

    iput-object p3, p0, LQt0;->y:Lju0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LQt0;->w:LUt0;

    iget-object v1, p0, LQt0;->x:Lorg/chromium/base/Callback;

    iget-object v2, p0, LQt0;->y:Lju0;

    const/4 v3, 0x1

    .line 1
    iput-boolean v3, v0, LUt0;->o:Z

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-wide v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 5
    invoke-static {v3, v4}, LJ/N;->MCBooW5W(J)V

    .line 6
    invoke-interface {v1, v2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
.end method
