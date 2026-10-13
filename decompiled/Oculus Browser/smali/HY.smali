.class public LHY;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static f:LHY;


# instance fields
.field public final a:LFZ;

.field public b:LWk0;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LFZ;

    invoke-direct {v0}, LFZ;-><init>()V

    iput-object v0, p0, LHY;->a:LFZ;

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, LWk0;

    invoke-direct {v0}, LWk0;-><init>()V

    .line 5
    iput-object v0, p0, LHY;->b:LWk0;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public static a()LHY;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LHY;->f:LHY;

    if-nez v0, :cond_0

    new-instance v0, LHY;

    invoke-direct {v0}, LHY;-><init>()V

    sput-object v0, LHY;->f:LHY;

    .line 3
    :cond_0
    sget-object v0, LHY;->f:LHY;

    return-object v0
.end method
