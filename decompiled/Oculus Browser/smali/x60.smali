.class public final synthetic Lx60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field public final x:Landroidx/browser/customtabs/CustomTabsSessionToken;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iput-object p2, p0, Lx60;->x:Landroidx/browser/customtabs/CustomTabsSessionToken;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lx60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lx60;->x:Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 1
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {v0, v1}, Lo60;->b(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    return-void
.end method
