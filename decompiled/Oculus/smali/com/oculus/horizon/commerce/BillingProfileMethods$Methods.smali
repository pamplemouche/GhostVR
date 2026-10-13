.class interface abstract Lcom/oculus/horizon/commerce/BillingProfileMethods$Methods;
.super Ljava/lang/Object;
.source "BillingProfileMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/BillingProfileMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Methods"
.end annotation


# virtual methods
.method public abstract addPaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract deletePaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract generateBillingAgreement(Ljava/lang/String;Lcom/oculus/horizon/commerce/PayPalBillingAgreementParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/commerce/PayPalBillingAgreementParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/commerce/PayPalBillingAgreementParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/commerce/common/PayPayBillingAgreementResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract generatePayPalToken(Ljava/lang/String;Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/commerce/common/PayPalTokenGenerateResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract setDefaultPaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method
