.class public abstract LTO0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LUT0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LUT0;

    const-class v1, LLO0;

    const-string v2, "org.chromium.chrome.browser.vr.VrDelegateProviderImpl"

    const-string v3, "vr"

    invoke-direct {v0, v3, v1, v2}, LUT0;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LTO0;->a:LUT0;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, LTO0;->a:LUT0;

    invoke-virtual {v0}, LUT0;->c()Z

    move-result v0

    return v0
.end method
