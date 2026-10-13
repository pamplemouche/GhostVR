.class public LI60;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LK60;


# direct methods
.method public synthetic constructor <init>(LK60;LH60;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI60;->w:LK60;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, LI60;->w:LK60;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LK60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    return-void
.end method
