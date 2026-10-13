.class public LPY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LQY0;


# direct methods
.method public constructor <init>(LQY0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPY0;->w:LQY0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LPY0;->w:LQY0;

    .line 2
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/16 v1, 0x42

    const/4 v2, 0x6

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(II)V

    return-void
.end method
