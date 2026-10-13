.class public final synthetic LBB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LyF0;


# instance fields
.field public final a:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBB0;->a:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LBB0;->a:Landroid/accounts/Account;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->a(Landroid/accounts/Account;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
