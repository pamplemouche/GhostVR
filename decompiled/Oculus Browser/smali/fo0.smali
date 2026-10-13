.class public final synthetic Lfo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lmo0;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lmo0;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfo0;->w:Lmo0;

    iput-object p2, p0, Lfo0;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lfo0;->w:Lmo0;

    iget-object v1, p0, Lfo0;->x:Lorg/chromium/base/Callback;

    .line 1
    iget-object v0, v0, Lmo0;->A:Llo0;

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
