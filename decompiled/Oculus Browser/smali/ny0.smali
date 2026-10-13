.class public final synthetic Lny0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/MainPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lny0;->w:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lny0;->w:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    .line 1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->O()V

    return-void
.end method
