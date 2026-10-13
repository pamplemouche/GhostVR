.class public abstract LFP0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;-><init>(LDP0;)V

    sput-object v0, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    return-void
.end method
