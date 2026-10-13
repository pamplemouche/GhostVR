.class public abstract LvR0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LUT0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LUT0;

    const-class v1, LuR0;

    const-string v2, "org.chromium.chrome.features.dev_ui.DevUiImpl"

    const-string v3, "dev_ui"

    invoke-direct {v0, v3, v1, v2}, LUT0;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LvR0;->a:LUT0;

    return-void
.end method
