.class public final synthetic Lga0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga0;->a:Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lga0;->a:Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget-object p1, v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;->e:LKR0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LKR0;->a(Z)V

    return-void
.end method
