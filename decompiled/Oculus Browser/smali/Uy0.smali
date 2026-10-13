.class public LUy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$HasServiceWorkerPaymentAppsCallback;


# instance fields
.field public final synthetic a:Landroid/support/v7/preference/Preference;

.field public final synthetic b:Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 1
    iput-object p1, p0, LUy0;->b:Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;

    iput-object p2, p0, LUy0;->a:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LUy0;->b:Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;

    iget-object v1, p0, LUy0;->a:Landroid/support/v7/preference/Preference;

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;->a(Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method
