.class public final synthetic LC60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Landroid/os/Bundle;

.field public final C:Ljava/util/List;

.field public final w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field public final x:Z

.field public final y:Landroidx/browser/customtabs/CustomTabsSessionToken;

.field public final z:I


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;ZLandroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iput-boolean p2, p0, LC60;->x:Z

    iput-object p3, p0, LC60;->y:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iput p4, p0, LC60;->z:I

    iput-object p5, p0, LC60;->A:Ljava/lang/String;

    iput-object p6, p0, LC60;->B:Landroid/os/Bundle;

    iput-object p7, p0, LC60;->C:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, LC60;->w:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-boolean v1, p0, LC60;->x:Z

    iget-object v2, p0, LC60;->y:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget v3, p0, LC60;->z:I

    iget-object v4, p0, LC60;->A:Ljava/lang/String;

    iget-object v5, p0, LC60;->B:Landroid/os/Bundle;

    iget-object v6, p0, LC60;->C:Ljava/util/List;

    const/4 v7, 0x1

    .line 1
    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(ZLandroidx/browser/customtabs/CustomTabsSessionToken;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    return-void
.end method
