.class public final synthetic Lrg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lxg0;


# direct methods
.method public constructor <init>(Lxg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrg0;->w:Lxg0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lrg0;->w:Lxg0;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->a(I)V

    .line 3
    invoke-static {}, LHU;->a()V
    :try_end_0
    .catch LMU; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    new-instance v1, Ltg0;

    invoke-direct {v1, v0, v2}, Ltg0;-><init>(Lxg0;Z)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
