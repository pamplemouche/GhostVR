.class public Lip0;
.super Landroid/util/Property;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lip0;->a:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    .line 2
    iget p1, p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->l0:F

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    check-cast p2, Ljava/lang/Float;

    .line 2
    iget-object p1, p0, Lip0;->a:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;F)V

    return-void
.end method
