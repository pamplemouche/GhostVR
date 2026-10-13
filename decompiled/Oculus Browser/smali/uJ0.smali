.class public abstract LuJ0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LUT0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LUT0;

    const-class v1, LtJ0;

    const-string v2, "org.chromium.chrome.browser.tasks.tab_management.TabManagementDelegateImpl"

    const-string v3, "tab_management"

    invoke-direct {v0, v3, v1, v2}, LUT0;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LuJ0;->a:LUT0;

    return-void
.end method
