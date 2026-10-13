.class public final synthetic LQW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/content/browser/TtsPlatformImpl;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQW0;->w:Lorg/chromium/content/browser/TtsPlatformImpl;

    iput-object p2, p0, LQW0;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LQW0;->w:Lorg/chromium/content/browser/TtsPlatformImpl;

    iget-object v1, p0, LQW0;->x:Ljava/lang/String;

    .line 1
    iget-wide v2, v0, Lorg/chromium/content/browser/TtsPlatformImpl;->w:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3
    invoke-static {v2, v3, v0, v1}, LJ/N;->M2$X0reE(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method
