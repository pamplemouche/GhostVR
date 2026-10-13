.class public LEi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic w:Landroidx/browser/customtabs/CustomTabsSessionToken;

.field public final synthetic x:LFi;


# direct methods
.method public constructor <init>(LFi;Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEi;->x:LFi;

    iput-object p2, p0, LEi;->w:Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, LEi;->x:LFi;

    iget-object v0, v0, LFi;->a:LGi;

    iget-object v1, p0, LEi;->w:Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-virtual {v0, v1}, LGi;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    return-void
.end method
