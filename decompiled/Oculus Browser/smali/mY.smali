.class public abstract LmY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZR;


# direct methods
.method public static a()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, LbS;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    return-object v0
.end method
