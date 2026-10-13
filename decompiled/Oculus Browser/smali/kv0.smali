.class public final synthetic Lkv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lyv0;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lyv0;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkv0;->w:Lyv0;

    iput-object p2, p0, Lkv0;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lkv0;->w:Lyv0;

    iget-object v1, p0, Lkv0;->x:Lorg/chromium/base/Callback;

    .line 1
    iget-object v0, v0, Lyv0;->Y:Lcx0;

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
