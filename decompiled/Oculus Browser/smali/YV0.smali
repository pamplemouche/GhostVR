.class public LYV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, LYV0;->w:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LYV0;->w:Landroid/content/Context;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a(Landroid/content/Context;Z)LsV;

    move-result-object v0

    .line 3
    invoke-static {}, LLV;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, LKV0;

    iget-object v1, p0, LYV0;->w:Landroid/content/Context;

    .line 5
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->p:LfW0;

    const/4 v3, -0x1

    .line 6
    invoke-direct {v0, v3, v2, v1}, LKV0;-><init>(ILjava/lang/Iterable;Landroid/content/Context;)V

    .line 7
    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->t:LKV0;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, LKV0;

    iget-object v2, p0, LYV0;->w:Landroid/content/Context;

    invoke-virtual {v0}, LsV;->a()I

    move-result v0

    .line 9
    sget-object v3, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->p:LfW0;

    .line 10
    invoke-direct {v1, v0, v3, v2}, LKV0;-><init>(ILjava/lang/Iterable;Landroid/content/Context;)V

    .line 11
    sput-object v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->t:LKV0;

    :goto_0
    return-void
.end method
