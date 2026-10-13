.class public La60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static y:LPT;


# instance fields
.field public final w:Landroid/content/Context;

.field public final x:LTT0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LTT0;LZ50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La60;->w:Landroid/content/Context;

    .line 3
    iput-object p2, p0, La60;->x:LTT0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, La60;->y:LPT;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LPT;

    invoke-direct {v0}, LPT;-><init>()V

    sput-object v0, La60;->y:LPT;

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Lb60;->x:Lb60;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lb60;

    iget-object v1, p0, La60;->w:Landroid/content/Context;

    iget-object v2, p0, La60;->x:LTT0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb60;-><init>(Landroid/content/Context;LTT0;LZ50;)V

    .line 6
    sput-object v0, Lb60;->x:Lb60;

    :cond_2
    return-void
.end method
