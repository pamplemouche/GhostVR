.class public final synthetic LAB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LAB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    .line 1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->O()V

    return-void
.end method
