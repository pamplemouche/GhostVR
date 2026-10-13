.class public final synthetic LVV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVV0;->w:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LVV0;->w:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 1
    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->f:LRV;

    .line 2
    iget-object v0, v0, LRV;->g:LLV;

    .line 3
    iget v1, v0, LLV;->m:I

    .line 4
    invoke-virtual {v0}, LLV;->l()V

    .line 5
    invoke-virtual {v0}, LLV;->h()V

    return-void
.end method
