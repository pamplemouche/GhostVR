.class public LEX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LFX0;


# direct methods
.method public constructor <init>(LFX0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEX0;->w:LFX0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, LEX0;->w:LFX0;

    iget-object v0, v0, LFX0;->A:Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;

    .line 2
    iget-wide v1, v0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->C:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    invoke-static {v1, v2, v0}, LJ/N;->MQAm7B7f(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method
