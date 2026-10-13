.class public LG10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/content/Context;

.field public final synthetic x:LRS0;

.field public final synthetic y:LKR0;

.field public final synthetic z:LH10;


# direct methods
.method public constructor <init>(LH10;Landroid/content/Context;LRS0;LKR0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LG10;->z:LH10;

    iput-object p2, p0, LG10;->w:Landroid/content/Context;

    iput-object p3, p0, LG10;->x:LRS0;

    iput-object p4, p0, LG10;->y:LKR0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LG10;->z:LH10;

    .line 3
    iget-boolean v1, v0, LH10;->a:Z

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, LG10;->w:Landroid/content/Context;

    iget-object v2, p0, LG10;->x:LRS0;

    iget-object v3, p0, LG10;->y:LKR0;

    invoke-virtual {v0, v1, v2, v3}, LH10;->c(Landroid/content/Context;LRS0;LKR0;)V

    return-void
.end method
